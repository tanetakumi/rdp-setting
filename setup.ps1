#RDPでのキーボードレイアウト変更、
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\00000411" /v "Layout File" /d "kbd106.dll" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\KeyboardType Mapping\JPN" /v "00010002" /d "kbd106.dll" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\KeyboardType Mapping\JPN" /v "00000000" /d "kbd106.dll" /f

# [時刻と言語] - [地域]
Set-Culture ja-JP

# [時刻と言語] - [地域] - [関連設定：日付、時刻、地域の追加設定] - [地域]
Set-WinSystemLocale ja-JP

# 国また地域
Set-WinHomeLocation -GeoId 122

# 現在の言語を日本語に設定
Set-WinUserLanguageList -LanguageList ja-JP -Force

#UIの言語を日本語で上書きします。
Set-WinUILanguageOverride -Language ja-JP

# TimeZone
tzutil /s "Tokyo Standard Time"
