#!name=BiliBili空降助手
#!desc=空降助手以便跳过视频中插入的广告

[Script]
http-request ^https:\/\/(grpc\.biliapi\.net|app\.bilibili\.com)\/bilibili\.community\.service\.dm\.v1\.DM\/DmSegMobile$ script-path=https://kelee.one/Resource/JavaScript/Bilibili/Bilibili_proto_request_kokoryh.js, argument=[{logLevel}], requires-body=true, binary-body-mode=true, timeout=10, enable={sponsorBlock}, tag=空降助手

http-response ^https:\/\/(grpc\.biliapi\.net|app\.bilibili\.com)\/bilibili\.(app\.(show\.v1\.Popular\/Index|dynamic\.v2\.Dynamic\/DynAll|view(unite)?\.v1\.View\/(View|ViewProgress|RelatesFeed)|playurl\.v1\.PlayURL\/PlayView|playerunite\.v1\.Player\/PlayViewUnite)|polymer\.app\.search\.v1\.Search\/SearchAll|community\.service\.dm\.v1\.DM\/DmView|main\.community\.reply\.v1\.Reply\/MainList|pgc\.gateway\.player\.v2\.PlayURL\/PlayView)$ script-path=https://kelee.one/Resource/JavaScript/Bilibili/Bilibili_proto_response_kokoryh.js, argument=[{displayUpList}, {purifyComment}, {sponsorBlock}, {logLevel}], requires-body=true, binary-body-mode=true, tag=ProtoBuf处理
