Param($workDir)

# ファイル一覧取得
$items = Get-ChildItem $workDir

# JPG一覧を取得
$jpgs = @()
foreach ($item in $items) {
    # JPGファイルをリストに詰める
    if ($item.ToString() -match '\.(jpg|JPG|jpeg|JPEG)$') {
        $jpgs += $item
    }
}

# rawのフォルダを取得
$rawPath = $workDir.ToString() + "\新しいフォルダー"
$rawItems = Get-ChildItem $rawPath

foreach ($raw in $rawItems) {
    $isDelete = $true
    $rawName = $raw.Name.Split(".")[0]
    foreach ($jpg in $jpgs) {
        $jpgName = $jpg.Name.Split(".")[0]

        # Rawに一致するJpgが見つかった場合はのRawのチェックを行う。
        if ($jpgName -eq $rawName) {
            $isDelete = $false
            break
        }
    }

    # Rawに一致するJpgが見つからなかった場合は削除
    if ($isDelete) {
        Write-Host "削除 [" $raw "]"
        Remove-Item $raw
    }
}