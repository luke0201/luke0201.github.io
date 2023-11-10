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

- ["Terminal (Halo: Combat Evolved
Anniversary)"](https://www.halopedia.org/Terminal_(Halo:_Combat_Evolved_Anniversary)#tabsection-0-0). *Halopedia*.
- ["The Pillar of Autumn"](https://www.halopedia.org/The_Pillar_of_Autumn_(Halo:_Combat_Evolved_level)). *Halopedia*.
- Halo Completionist (15 November 2014). ["Halo MCC - All CE Skulls - Headhunter - Achievement
Guide"](https://youtu.be/3_cv8mjNuoY). *YouTube*.

## Game Screenshot

Press *Windows* + *Print Screen* keys to capture the entire screen. The image will save to *Pictures\Screenshots*
folder.

Transfer the screenshots to your Mac PC. I use Google Drive for this purpose.

Each image is a 1920x1080 PNG file. Its file size is around 3MB, too big to be embedded in an article. You need to
reduce the file size. Downscale and convert it into WebP format using *webpify.sh* script.

```sh
./webpify.sh ${DIRECTORY}
```

The output image would be smaller than 100KB. Even mobile viewers won't be a problem now!

## Halo Achievements

Use `halo-achievement.html` template to insert achievement notices. Provide the following parameters:

- `type`: `"info"` or `"warning"`
- `game`: to which Halo title the achievement belongs (`"cea"`, `"2a"`, `"3"`, `"3_odst"`, `"reach"`, or `"4"`)
- `name`: achievement identifier
- `content`: main content

Add the Korean and English names to `_data/halo_achievements/{game}/{identifier}.yaml` in the following format:

```yaml
english: Achievement Name in English
korean: Achievement Name in Korean
```

`identifier` is not only used to locate the entry in the data file, but also the name of the logo image under the
directory `/assets/images/{game}/achievements/`.

Here is an example:

```
{% capture content -%}
플레이리스트 목록에서 LASO (legendary all skulls on) 캠페인 플레이리스트를 찾을 수 있다. 직역하면 모든 해골을 활성화한 전설 난이도다.
정확히는 나쁜 해골만 있다. 다른 이름으로는 신화 난이도라고 불린다. 이 게임 고인물이라고 불리는 방송인들조차 어려워한다.

코버넌트 무기를 사용할 수 없고, 탄약 소모가 두 배인 데다, 아군들이 죽고 떨어뜨린 총에는 탄약이 절반밖에 없다. 그래서 가장 흔한 돌격소총에
의존해야 한다.
{%- endcapture -%}
{% include halo-achievement.html type="info" game="cea" name="like_a_fine_wine" content=content %}
```

## Helpful Links

I have heavily referred to [Halo Completionist](https://youtube.com/@HaloCompletionist) and
[Hokiebird428](https://www.youtube.com/@Hokiebird428), YouTube channels, while writing Halo guides.

Transcripts and trivia are from [Halopedia](https://www.halopedia.org). I previously relied on
[Halo Alpha](https://halo.fandom.com/wiki/Halo_Alpha), a Fandom wiki, but migrated because of excessive ads.

And I'll list the rest.

- [Halo MCC achievements](https://steamcommunity.com/stats/976730/achievements/)

### Halo: Combat Evolved Anniversary

- [Campaign list](https://www.halopedia.org/Halo:_Combat_Evolved#Campaign)
- [Legendary difficulty walkthroughs (Halo
Completionist)](https://youtube.com/playlist?list=PL3bi5dIhs8VW5DLy7E19339-TwQEhNI59)
- [Legendary difficulty walkthroughs (Hokiebird428)](https://youtube.com/playlist?list=PLDDA06718B3EC7CB3)
- [Legendary difficulty speedruns](https://youtube.com/playlist?list=PL3bi5dIhs8VU427w55d8Z8qF7CCFZ61NE)
- [Terminal videos](https://youtu.be/TyKoYmgD_tQ)

### Halo 2: Anniversary

- [Campaign list](https://www.halopedia.org/Halo_2#Campaign)
- [Legendary difficulty walkthroughs (Hokiebird428)](https://youtube.com/playlist?list=PL87AB8AC775CB32B0)
- [Legendary difficulty speedruns](https://youtube.com/playlist?list=PL3bi5dIhs8VV4dLHihlU5Y4mnmm2T93wD)
- [Terminal videos](https://youtu.be/vp8Phzz3oCA)

### Halo 3

- [Campaign list](https://halopedia.org/Halo_3#Campaign)
- [Legendary difficulty walkthroughs
(Hokiebird428)](https://youtube.com/playlist?list=PLI1zyR8U6_08d5NR19sI7pITQVtzv-arM)
- [Legendary difficulty speedruns](https://youtube.com/playlist?list=PL3bi5dIhs8VWLm_AG_ko3jWuS_0whSAFj)
