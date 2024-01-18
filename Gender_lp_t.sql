SELECT
  epi."性別" AS x1,
  COUNT(DISTINCT(epi."エピソード")) as k
FROM
  biobank.analysis_v_episode AS epi
  {extra_join}
WHERE
    {extra_where}
GROUP BY
  epi."性別"

-- DESC:Gender:{project}:性別ごとの単純集計
-- 性別が欠損になることはほとんどないと思われるため、k-匿名化の影響を受けない合計症例数としての使用も想定
