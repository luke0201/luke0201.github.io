# Personal Blog

Yes, this is my personal blog.

Here are guidelines and references for writing articles.

## Citation Format

Follow the format roughly equivalent to that of Wikipedia. You may omit any unnecessary element. Order the references
according to the surname of the first author and title if not present.

### Books

```md
{surname}, {first name} ({year}). *{title}*. {publisher}. pp. {start}–{end}. ISBN {ISBN}.
```

For example:

- Dietz, William C. (2019). *Halo: The Flood*. Gallery Books. pp. 1–7. ISBN 978-1-9821-1163-2.
- Nylund, Eric (2019). *Halo: First Strike*. Gallery Books. ISBN 978-1-9821-1165-6.

### Webpages

```md
{author} ({date}). ["{title}"]({URL}). *{site}*.
```

You don't need to specify the chapter name when citing from a long article. Just include its URL fragment if possible.

When attaching a YouTube link, try to include the start time, the query string `?t=___` at the end, as well.

For example:

- ["Halo: Combat Evolved Anniversary
Terminals"](https://halo.fandom.com/wiki/Terminal/Halo:_Combat_Evolved_Anniversary#Terminal_1_-_The_Pillar_of_Autumn).
*Halo Alpha*.
- ["The Pillar of Autumn"](https://halo.fandom.com/wiki/The_Pillar_of_Autumn_(Halo:_Combat_Evolved_level)). *Halo
Alpha*.
- Halo Completionist (15 November 2014). ["Halo MCC - All CE Skulls - Headhunter - Achievement
Guide"](https://youtu.be/3_cv8mjNuoY). *YouTube*.

## Game Screenshot

Press *Windows* + *Print Screen* keys to capture the entire screen. The image will save to *Pictures\Screenshots*
folder.

Transfer the screenshots to your Mac PC. I use Google Drive for this purpose.

Each image is a 1920x1080 PNG file. Its file size is around 3MB, too big to be embedded in an article. You need to
reduce the file size. Downscale and convert it into WebP format using *convert-screenshots.sh* script.

```shell
./convert-screenshots.sh ${DIRECTORY}
```

The output image would be smaller than 100KB. Even mobile viewers won't be a problem now!

## Halo Achievements

Use `halo-achievement.html` template to insert achievement notices. There are four parameters you should fill in:

- `type`: `"info"` or `"warning"`
- `name`: achievement identifier (key in `_data/halo_achievement_names.yaml`)
- `content`: main content

Add the Korean and English names to `_data/halo_achievement_names.yaml` in the following format:

```yaml
identifier:
  english: Achievement Name in English
  korean: Achievement Name in Korean
```

`identifier` is not only used to locate the entry in the data file, but also the name of the logo image under the
directory `/assets/images/halo-cea/achievements/`.

Here is an example:

```
{% capture content %}
플레이리스트 목록에서 LASO (legendary all skulls on) 캠페인 플레이리스트를 찾을 수 있다. 모든 해골을 활성화한 전설 난이도이다. 기존의
전설 난이도에 장애 요소를 잔뜩 추가해서 더 어렵게 만들었다고 생각하면 된다. 다른 이름으로는 신화 난이도라고도 불린다. 이 게임의 고인물이라고
불리는 방송인들조차도 굉장히 어려워한다.

코버넌트의 무기를 사용할 수 없고, 탄약 소모가 두 배인 데다 아군들이 죽고 떨어뜨린 총에는 탄약이 평소의 절반만 남아 있다. 그렇기 때문에
그나마 흔히 발견할 수 있는 돌격소총에 의존할 수밖에 없다.
{% endcapture %}
{% include halo-achievement.html
  type="info"
  name="like_a_fine_wine"
  content=content
%}
```

## Helpful Links

I have heavily referred to [Halo Completionist](https://youtube.com/@HaloCompletionist), a YouTube channel, while
writing Halo guides.

Transcripts and trivia are from [Halo Alpha](https://halo.fandom.com/wiki/Halo_Alpha), a Fandom wiki.

### Halo: Combat Evolved Anniversary

- [Achievement list](https://steamcommunity.com/stats/976730/achievements/)
- [Campaign list](https://halo.fandom.com/wiki/Halo:_Combat_Evolved_Anniversary#Campaign_2)
- [Campaign walkthroughs on legendary difficulty](https://youtube.com/playlist?list=PL3bi5dIhs8VW5DLy7E19339-TwQEhNI59)
- [Locations of every skull](https://youtu.be/3_cv8mjNuoY)
- [Locations of every terminal](https://youtu.be/jh2UytziVqQ)
- [Videos of every terminal](https://youtu.be/TyKoYmgD_tQ)
- [Transcripts from every terminal](https://halo.fandom.com/wiki/Terminal/Halo:_Combat_Evolved_Anniversary)
