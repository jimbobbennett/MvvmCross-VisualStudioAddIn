Add-Type -Assembly "System.IO.Compression.FileSystem";
$sourceDir =  $PSScriptRoot + "\MVVMCross.Application.Template";
$outFile = $PSScriptRoot + "\MVVMCross-VSAddIn\ProjectTemplates\CSharp\MvvmCross\Root.zip";
Remove-Item $outFile;
[System.IO.Compression.ZipFile]::CreateFromDirectory($sourceDir, $outFile);