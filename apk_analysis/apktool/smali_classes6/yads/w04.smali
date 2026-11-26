.class public final Lyads/w04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/pe;


# instance fields
.field public A:Z

.field public final a:Landroid/content/Context;

.field public final b:Lyads/wl0;

.field public final c:Landroid/media/metrics/PlaybackSession;

.field public final d:J

.field public final e:Lyads/jx5;

.field public final f:Lyads/hx5;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashMap;

.field public i:Ljava/lang/String;

.field public j:Landroid/media/metrics/PlaybackMetrics$Builder;

.field public k:I

.field public l:I

.field public m:I

.field public n:Lyads/zv4;

.field public o:Lyads/v04;

.field public p:Lyads/v04;

.field public q:Lyads/v04;

.field public r:Lyads/vz2;

.field public s:Lyads/vz2;

.field public t:Lyads/vz2;

.field public u:Z

.field public v:I

.field public w:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/w04;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/w04;->c:Landroid/media/metrics/PlaybackSession;

    new-instance p1, Lyads/jx5;

    invoke-direct {p1}, Lyads/jx5;-><init>()V

    iput-object p1, p0, Lyads/w04;->e:Lyads/jx5;

    new-instance p1, Lyads/hx5;

    invoke-direct {p1}, Lyads/hx5;-><init>()V

    iput-object p1, p0, Lyads/w04;->f:Lyads/hx5;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lyads/w04;->h:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lyads/w04;->g:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lyads/w04;->d:J

    const/4 p1, 0x0

    iput p1, p0, Lyads/w04;->l:I

    iput p1, p0, Lyads/w04;->m:I

    new-instance p1, Lyads/wl0;

    invoke-direct {p1}, Lyads/wl0;-><init>()V

    iput-object p1, p0, Lyads/w04;->b:Lyads/wl0;

    iput-object p0, p1, Lyads/wl0;->e:Lyads/w04;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1709
    iget-object v0, p0, Lyads/w04;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lyads/w04;->A:Z

    if-eqz v2, :cond_3

    .line 1710
    iget v2, p0, Lyads/w04;->z:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setAudioUnderrunCount(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 1711
    iget-object v0, p0, Lyads/w04;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lyads/w04;->x:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesDropped(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 1712
    iget-object v0, p0, Lyads/w04;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lyads/w04;->y:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesPlayed(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 1713
    iget-object v0, p0, Lyads/w04;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lyads/w04;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1714
    iget-object v2, p0, Lyads/w04;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkTransferDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 1715
    iget-object v0, p0, Lyads/w04;->h:Ljava/util/HashMap;

    iget-object v2, p0, Lyads/w04;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1716
    iget-object v2, p0, Lyads/w04;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 1717
    iget-object v2, p0, Lyads/w04;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    .line 1718
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 1719
    :goto_2
    invoke-virtual {v2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamSource(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 1720
    iget-object v0, p0, Lyads/w04;->c:Landroid/media/metrics/PlaybackSession;

    iget-object v2, p0, Lyads/w04;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-virtual {v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->build()Landroid/media/metrics/PlaybackMetrics;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackSession;->reportPlaybackMetrics(Landroid/media/metrics/PlaybackMetrics;)V

    :cond_3
    const/4 v0, 0x0

    .line 1721
    iput-object v0, p0, Lyads/w04;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 1722
    iput-object v0, p0, Lyads/w04;->i:Ljava/lang/String;

    .line 1723
    iput v1, p0, Lyads/w04;->z:I

    .line 1724
    iput v1, p0, Lyads/w04;->x:I

    .line 1725
    iput v1, p0, Lyads/w04;->y:I

    .line 1726
    iput-object v0, p0, Lyads/w04;->r:Lyads/vz2;

    .line 1727
    iput-object v0, p0, Lyads/w04;->s:Lyads/vz2;

    .line 1728
    iput-object v0, p0, Lyads/w04;->t:Lyads/vz2;

    .line 1729
    iput-boolean v1, p0, Lyads/w04;->A:Z

    return-void
.end method

.method public final a(IJLyads/vz2;I)V
    .locals 3

    .line 1657
    invoke-static {p1}, Lhn;->a(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    iget-wide v0, p0, Lyads/w04;->d:J

    sub-long/2addr p2, v0

    .line 1658
    invoke-virtual {p1, p2, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p4, :cond_d

    .line 1659
    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    const/4 v0, 0x2

    if-eq p5, p3, :cond_1

    const/4 v1, 0x3

    if-eq p5, v0, :cond_2

    if-eq p5, v1, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1660
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackChangeReason(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 1661
    iget-object p5, p4, Lyads/vz2;->l:Ljava/lang/String;

    if-eqz p5, :cond_3

    .line 1662
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 1663
    :cond_3
    iget-object p5, p4, Lyads/vz2;->m:Ljava/lang/String;

    if-eqz p5, :cond_4

    .line 1664
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 1665
    :cond_4
    iget-object p5, p4, Lyads/vz2;->j:Ljava/lang/String;

    if-eqz p5, :cond_5

    .line 1666
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setCodecName(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 1667
    :cond_5
    iget p5, p4, Lyads/vz2;->i:I

    const/4 v1, -0x1

    if-eq p5, v1, :cond_6

    .line 1668
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setBitrate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 1669
    :cond_6
    iget p5, p4, Lyads/vz2;->r:I

    if-eq p5, v1, :cond_7

    .line 1670
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setWidth(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 1671
    :cond_7
    iget p5, p4, Lyads/vz2;->s:I

    if-eq p5, v1, :cond_8

    .line 1672
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setHeight(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 1673
    :cond_8
    iget p5, p4, Lyads/vz2;->z:I

    if-eq p5, v1, :cond_9

    .line 1674
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setChannelCount(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 1675
    :cond_9
    iget p5, p4, Lyads/vz2;->A:I

    if-eq p5, v1, :cond_a

    .line 1676
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setAudioSampleRate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 1677
    :cond_a
    iget-object p5, p4, Lyads/vz2;->d:Ljava/lang/String;

    if-eqz p5, :cond_c

    .line 1678
    sget v2, Lyads/u56;->a:I

    .line 1679
    const-string v2, "-"

    invoke-virtual {p5, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p5

    .line 1680
    aget-object p2, p5, p2

    array-length v1, p5

    if-lt v1, v0, :cond_b

    aget-object p5, p5, p3

    goto :goto_1

    :cond_b
    const/4 p5, 0x0

    :goto_1
    invoke-static {p2, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 1681
    iget-object p5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 1682
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p2, :cond_c

    .line 1683
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguageRegion(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 1684
    :cond_c
    iget p2, p4, Lyads/vz2;->t:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p2, p4

    if-eqz p4, :cond_e

    .line 1685
    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setVideoFrameRate(F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_2

    .line 1686
    :cond_d
    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 1687
    :cond_e
    :goto_2
    iput-boolean p3, p0, Lyads/w04;->A:Z

    .line 1688
    iget-object p0, p0, Lyads/w04;->c:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p1}, Landroid/media/metrics/TrackChangeEvent$Builder;->build()Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/metrics/PlaybackSession;->reportTrackChangeEvent(Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method public final a(Lyads/kw4;Lyads/oe;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    iget-object v1, v6, Lyads/oe;->a:Lyads/my2;

    iget-object v1, v1, Lyads/my2;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_33

    :cond_0
    const/4 v7, 0x0

    move v1, v7

    :goto_0
    iget-object v2, v6, Lyads/oe;->a:Lyads/my2;

    iget-object v2, v2, Lyads/my2;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/16 v8, 0xb

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-ge v1, v2, :cond_c

    iget-object v2, v6, Lyads/oe;->a:Lyads/my2;

    invoke-virtual {v2, v1}, Lyads/my2;->a(I)I

    move-result v2

    iget-object v3, v6, Lyads/oe;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/ne;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lyads/w04;->b:Lyads/wl0;

    if-nez v2, :cond_a

    monitor-enter v4

    :try_start_0
    iget-object v2, v4, Lyads/wl0;->e:Lyads/w04;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v4, Lyads/wl0;->f:Lyads/kx5;

    iget-object v5, v3, Lyads/ne;->b:Lyads/kx5;

    iput-object v5, v4, Lyads/wl0;->f:Lyads/kx5;

    iget-object v5, v4, Lyads/wl0;->c:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/vl0;

    iget-object v11, v4, Lyads/wl0;->f:Lyads/kx5;

    iget v12, v8, Lyads/vl0;->b:I

    invoke-virtual {v2}, Lyads/kx5;->b()I

    move-result v13

    if-lt v12, v13, :cond_2

    invoke-virtual {v11}, Lyads/kx5;->b()I

    move-result v13

    if-ge v12, v13, :cond_4

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_2
    iget-object v13, v8, Lyads/vl0;->g:Lyads/wl0;

    iget-object v13, v13, Lyads/wl0;->a:Lyads/jx5;

    const-wide/16 v14, 0x0

    invoke-virtual {v2, v12, v13, v14, v15}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    iget-object v12, v8, Lyads/vl0;->g:Lyads/wl0;

    iget-object v12, v12, Lyads/wl0;->a:Lyads/jx5;

    iget v12, v12, Lyads/jx5;->p:I

    :goto_2
    iget-object v13, v8, Lyads/vl0;->g:Lyads/wl0;

    iget-object v13, v13, Lyads/wl0;->a:Lyads/jx5;

    iget v13, v13, Lyads/jx5;->q:I

    if-gt v12, v13, :cond_4

    invoke-virtual {v2, v12}, Lyads/kx5;->a(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v13

    if-eq v13, v9, :cond_3

    iget-object v12, v8, Lyads/vl0;->g:Lyads/wl0;

    iget-object v12, v12, Lyads/wl0;->b:Lyads/hx5;

    invoke-virtual {v11, v13, v12, v7}, Lyads/kx5;->a(ILyads/hx5;Z)Lyads/hx5;

    move-result-object v12

    iget v12, v12, Lyads/hx5;->d:I

    goto :goto_3

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    move v12, v9

    :goto_3
    iput v12, v8, Lyads/vl0;->b:I

    if-ne v12, v9, :cond_5

    goto :goto_5

    :cond_5
    iget-object v12, v8, Lyads/vl0;->d:Lyads/h14;

    if-nez v12, :cond_6

    goto :goto_4

    :cond_6
    iget-object v12, v12, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v11

    if-eq v11, v9, :cond_7

    :goto_4
    invoke-virtual {v8, v3}, Lyads/vl0;->a(Lyads/ne;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_7
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    iget-boolean v11, v8, Lyads/vl0;->e:Z

    if-eqz v11, :cond_1

    iget-object v11, v8, Lyads/vl0;->a:Ljava/lang/String;

    iget-object v12, v4, Lyads/wl0;->g:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iput-object v10, v4, Lyads/wl0;->g:Ljava/lang/String;

    :cond_8
    iget-object v11, v4, Lyads/wl0;->e:Lyads/w04;

    iget-object v8, v8, Lyads/vl0;->a:Ljava/lang/String;

    invoke-virtual {v11, v3, v8}, Lyads/w04;->b(Lyads/ne;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v4, v3}, Lyads/wl0;->b(Lyads/ne;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_7

    :goto_6
    monitor-exit v4

    throw v0

    :cond_a
    if-ne v2, v8, :cond_b

    iget v2, v0, Lyads/w04;->k:I

    invoke-virtual {v4, v3, v2}, Lyads/wl0;->a(Lyads/ne;I)V

    goto :goto_7

    :cond_b
    invoke-virtual {v4, v3}, Lyads/wl0;->c(Lyads/ne;)V

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v6, v7}, Lyads/oe;->a(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v6, Lyads/oe;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ne;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lyads/w04;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v4, :cond_d

    iget-object v4, v1, Lyads/ne;->b:Lyads/kx5;

    iget-object v1, v1, Lyads/ne;->d:Lyads/h14;

    invoke-virtual {v0, v4, v1}, Lyads/w04;->a(Lyads/kx5;Lyads/h14;)V

    :cond_d
    const/4 v11, 0x2

    invoke-virtual {v6, v11}, Lyads/oe;->a(I)Z

    move-result v1

    const/4 v14, 0x1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lyads/w04;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v1, :cond_15

    move-object/from16 v1, p1

    check-cast v1, Lyads/eq2;

    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v1, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v1, v1, Lyads/bw4;->i:Lyads/q06;

    iget-object v1, v1, Lyads/q06;->d:Lyads/m16;

    iget-object v1, v1, Lyads/m16;->b:Lyads/oe3;

    invoke-virtual {v1, v7}, Lyads/oe3;->a(I)Lyads/le3;

    move-result-object v1

    :cond_e
    invoke-virtual {v1}, Lyads/g;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v1}, Lyads/g;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/l16;

    move v5, v7

    :goto_8
    iget v15, v4, Lyads/l16;->b:I

    if-ge v5, v15, :cond_e

    iget-object v15, v4, Lyads/l16;->f:[Z

    aget-boolean v15, v15, v5

    if-eqz v15, :cond_f

    iget-object v15, v4, Lyads/l16;->c:Lyads/f06;

    iget-object v15, v15, Lyads/f06;->e:[Lyads/vz2;

    aget-object v15, v15, v5

    iget-object v15, v15, Lyads/vz2;->p:Lyads/ql2;

    if-eqz v15, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_10
    move-object v15, v10

    :goto_9
    if-eqz v15, :cond_15

    iget-object v1, v0, Lyads/w04;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    sget v4, Lyads/u56;->a:I

    move v4, v7

    :goto_a
    iget v5, v15, Lyads/ql2;->e:I

    if-ge v4, v5, :cond_14

    iget-object v5, v15, Lyads/ql2;->b:[Lyads/pl2;

    aget-object v5, v5, v4

    iget-object v5, v5, Lyads/pl2;->c:Ljava/util/UUID;

    sget-object v8, Lyads/uv;->d:Ljava/util/UUID;

    invoke-virtual {v5, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v4, 0x3

    goto :goto_b

    :cond_11
    sget-object v8, Lyads/uv;->e:Ljava/util/UUID;

    invoke-virtual {v5, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    move v4, v11

    goto :goto_b

    :cond_12
    sget-object v8, Lyads/uv;->c:Ljava/util/UUID;

    invoke-virtual {v5, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v4, 0x6

    goto :goto_b

    :cond_13
    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0xb

    goto :goto_a

    :cond_14
    move v4, v14

    :goto_b
    invoke-virtual {v1, v4}, Landroid/media/metrics/PlaybackMetrics$Builder;->setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_15
    const/16 v1, 0x3f3

    invoke-virtual {v6, v1}, Lyads/oe;->a(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, v0, Lyads/w04;->z:I

    add-int/2addr v1, v14

    iput v1, v0, Lyads/w04;->z:I

    :cond_16
    iget-object v1, v0, Lyads/w04;->n:Lyads/zv4;

    const/4 v4, 0x5

    const/4 v8, 0x4

    if-nez v1, :cond_17

    move v13, v14

    const/16 v15, 0x8

    const/16 v16, 0x6

    const/16 v17, 0x9

    goto/16 :goto_1d

    :cond_17
    iget-object v12, v0, Lyads/w04;->a:Landroid/content/Context;

    iget v13, v0, Lyads/w04;->v:I

    if-ne v13, v8, :cond_18

    move v13, v14

    goto :goto_c

    :cond_18
    move v13, v7

    :goto_c
    iget v15, v1, Lyads/zv4;->b:I

    const/16 v5, 0x3e9

    if-ne v15, v5, :cond_19

    new-instance v5, Lyads/u04;

    const/16 v12, 0x14

    invoke-direct {v5, v12, v7}, Lyads/u04;-><init>(II)V

    :goto_d
    const/16 v13, 0xd

    const/4 v14, 0x7

    const/16 v15, 0x8

    const/16 v16, 0x6

    const/16 v17, 0x9

    goto/16 :goto_1c

    :cond_19
    instance-of v5, v1, Lyads/up2;

    if-eqz v5, :cond_1b

    move-object v5, v1

    check-cast v5, Lyads/up2;

    iget v15, v5, Lyads/up2;->d:I

    if-ne v15, v14, :cond_1a

    move v15, v14

    goto :goto_e

    :cond_1a
    move v15, v7

    :goto_e
    iget v5, v5, Lyads/up2;->h:I

    goto :goto_f

    :cond_1b
    move v5, v7

    move v15, v5

    :goto_f
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v14, Ljava/io/IOException;

    const/16 v19, 0x1a

    const/16 v20, 0x19

    const/16 v10, 0x1b

    if-eqz v9, :cond_33

    instance-of v5, v14, Lyads/la3;

    if-eqz v5, :cond_1c

    check-cast v14, Lyads/la3;

    iget v5, v14, Lyads/la3;->e:I

    new-instance v9, Lyads/u04;

    invoke-direct {v9, v4, v5}, Lyads/u04;-><init>(II)V

    :goto_10
    move-object v5, v9

    goto :goto_d

    :cond_1c
    instance-of v5, v14, Lyads/ka3;

    if-nez v5, :cond_1d

    instance-of v5, v14, Lyads/xs4;

    if-eqz v5, :cond_1e

    :cond_1d
    const/16 v9, 0x9

    const/4 v12, 0x6

    goto/16 :goto_18

    :cond_1e
    instance-of v5, v14, Lyads/ja3;

    if-nez v5, :cond_1f

    instance-of v9, v14, Lyads/y36;

    if-eqz v9, :cond_20

    :cond_1f
    const/16 v9, 0x9

    goto/16 :goto_13

    :cond_20
    iget v5, v1, Lyads/zv4;->b:I

    const/16 v9, 0x3ea

    const/16 v12, 0x15

    if-ne v5, v9, :cond_21

    new-instance v5, Lyads/u04;

    invoke-direct {v5, v12, v7}, Lyads/u04;-><init>(II)V

    goto :goto_d

    :cond_21
    instance-of v5, v14, Lyads/rl2;

    if-eqz v5, :cond_2b

    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Lyads/u56;->a:I

    if-lt v9, v12, :cond_25

    instance-of v12, v5, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v12, :cond_25

    check-cast v5, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v5}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyads/u56;->a(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v11, :cond_24

    if-eq v5, v8, :cond_24

    const/16 v9, 0xa

    if-eq v5, v9, :cond_23

    const/4 v9, 0x7

    if-eq v5, v9, :cond_24

    const/16 v9, 0x8

    if-eq v5, v9, :cond_22

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    goto :goto_11

    :pswitch_0
    const/16 v10, 0x18

    goto :goto_11

    :cond_22
    :pswitch_1
    const/16 v10, 0x1c

    goto :goto_11

    :cond_23
    :pswitch_2
    move/from16 v10, v20

    goto :goto_11

    :cond_24
    :pswitch_3
    move/from16 v10, v19

    :goto_11
    new-instance v9, Lyads/u04;

    invoke-direct {v9, v10, v5}, Lyads/u04;-><init>(II)V

    goto :goto_10

    :cond_25
    const/16 v12, 0x17

    if-lt v9, v12, :cond_26

    instance-of v12, v5, Landroid/media/MediaDrmResetException;

    if-eqz v12, :cond_26

    new-instance v5, Lyads/u04;

    invoke-direct {v5, v10, v7}, Lyads/u04;-><init>(II)V

    goto/16 :goto_d

    :cond_26
    const/16 v10, 0x12

    if-lt v9, v10, :cond_27

    instance-of v12, v5, Landroid/media/NotProvisionedException;

    if-eqz v12, :cond_27

    new-instance v5, Lyads/u04;

    const/16 v9, 0x18

    invoke-direct {v5, v9, v7}, Lyads/u04;-><init>(II)V

    goto/16 :goto_d

    :cond_27
    if-lt v9, v10, :cond_28

    instance-of v9, v5, Landroid/media/DeniedByServerException;

    if-eqz v9, :cond_28

    new-instance v5, Lyads/u04;

    const/16 v9, 0x1d

    invoke-direct {v5, v9, v7}, Lyads/u04;-><init>(II)V

    goto/16 :goto_d

    :cond_28
    instance-of v9, v5, Lyads/k46;

    if-eqz v9, :cond_29

    new-instance v5, Lyads/u04;

    const/16 v12, 0x17

    invoke-direct {v5, v12, v7}, Lyads/u04;-><init>(II)V

    goto/16 :goto_d

    :cond_29
    instance-of v5, v5, Lyads/qk0;

    if-eqz v5, :cond_2a

    new-instance v5, Lyads/u04;

    const/16 v12, 0x1c

    invoke-direct {v5, v12, v7}, Lyads/u04;-><init>(II)V

    goto/16 :goto_d

    :cond_2a
    new-instance v5, Lyads/u04;

    const/16 v9, 0x1e

    invoke-direct {v5, v9, v7}, Lyads/u04;-><init>(II)V

    goto/16 :goto_d

    :cond_2b
    instance-of v5, v14, Lyads/dx2;

    if-eqz v5, :cond_2d

    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/io/FileNotFoundException;

    if-eqz v5, :cond_2d

    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    sget v9, Lyads/u56;->a:I

    if-lt v9, v12, :cond_2c

    instance-of v9, v5, Landroid/system/ErrnoException;

    if-eqz v9, :cond_2c

    check-cast v5, Landroid/system/ErrnoException;

    iget v5, v5, Landroid/system/ErrnoException;->errno:I

    sget v9, Landroid/system/OsConstants;->EACCES:I

    if-ne v5, v9, :cond_2c

    new-instance v5, Lyads/u04;

    const/16 v9, 0x20

    invoke-direct {v5, v9, v7}, Lyads/u04;-><init>(II)V

    goto/16 :goto_d

    :cond_2c
    new-instance v5, Lyads/u04;

    const/16 v9, 0x1f

    invoke-direct {v5, v9, v7}, Lyads/u04;-><init>(II)V

    goto/16 :goto_d

    :cond_2d
    new-instance v5, Lyads/u04;

    const/16 v9, 0x9

    invoke-direct {v5, v9, v7}, Lyads/u04;-><init>(II)V

    :goto_12
    move/from16 v17, v9

    const/16 v13, 0xd

    const/4 v14, 0x7

    const/16 v15, 0x8

    const/16 v16, 0x6

    goto/16 :goto_1c

    :goto_13
    invoke-static {v12}, Lyads/nn4;->a(Landroid/content/Context;)Lyads/nn4;

    move-result-object v10

    invoke-virtual {v10}, Lyads/nn4;->a()I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_2e

    new-instance v5, Lyads/u04;

    const/4 v10, 0x3

    invoke-direct {v5, v10, v7}, Lyads/u04;-><init>(II)V

    goto :goto_12

    :cond_2e
    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    instance-of v12, v10, Ljava/net/UnknownHostException;

    if-eqz v12, :cond_2f

    new-instance v5, Lyads/u04;

    const/4 v12, 0x6

    invoke-direct {v5, v12, v7}, Lyads/u04;-><init>(II)V

    :goto_14
    move/from16 v17, v9

    move/from16 v16, v12

    :goto_15
    const/16 v13, 0xd

    :goto_16
    const/4 v14, 0x7

    :goto_17
    const/16 v15, 0x8

    goto/16 :goto_1c

    :cond_2f
    const/4 v12, 0x6

    instance-of v10, v10, Ljava/net/SocketTimeoutException;

    if-eqz v10, :cond_30

    new-instance v5, Lyads/u04;

    const/4 v10, 0x7

    invoke-direct {v5, v10, v7}, Lyads/u04;-><init>(II)V

    move/from16 v17, v9

    move v14, v10

    move/from16 v16, v12

    const/16 v13, 0xd

    goto :goto_17

    :cond_30
    if-eqz v5, :cond_31

    check-cast v14, Lyads/ja3;

    iget v5, v14, Lyads/ja3;->d:I

    const/4 v10, 0x1

    if-ne v5, v10, :cond_31

    new-instance v5, Lyads/u04;

    invoke-direct {v5, v8, v7}, Lyads/u04;-><init>(II)V

    goto :goto_14

    :cond_31
    new-instance v5, Lyads/u04;

    const/16 v10, 0x8

    invoke-direct {v5, v10, v7}, Lyads/u04;-><init>(II)V

    move/from16 v17, v9

    move v15, v10

    move/from16 v16, v12

    const/16 v13, 0xd

    const/4 v14, 0x7

    goto/16 :goto_1c

    :goto_18
    new-instance v5, Lyads/u04;

    if-eqz v13, :cond_32

    const/16 v10, 0xa

    goto :goto_19

    :cond_32
    const/16 v10, 0xb

    :goto_19
    invoke-direct {v5, v10, v7}, Lyads/u04;-><init>(II)V

    goto :goto_14

    :cond_33
    const/16 v9, 0x18

    const/16 v12, 0x1c

    const/16 v16, 0x6

    const/16 v17, 0x9

    if-eqz v15, :cond_35

    if-eqz v5, :cond_34

    const/4 v13, 0x1

    if-ne v5, v13, :cond_35

    :cond_34
    new-instance v5, Lyads/u04;

    const/16 v9, 0x23

    invoke-direct {v5, v9, v7}, Lyads/u04;-><init>(II)V

    goto :goto_15

    :cond_35
    if-eqz v15, :cond_36

    const/4 v13, 0x3

    if-ne v5, v13, :cond_36

    new-instance v5, Lyads/u04;

    const/16 v9, 0xf

    invoke-direct {v5, v9, v7}, Lyads/u04;-><init>(II)V

    goto :goto_15

    :cond_36
    if-eqz v15, :cond_37

    if-ne v5, v11, :cond_37

    new-instance v5, Lyads/u04;

    const/16 v12, 0x17

    invoke-direct {v5, v12, v7}, Lyads/u04;-><init>(II)V

    goto :goto_15

    :cond_37
    instance-of v5, v14, Lyads/yy3;

    if-eqz v5, :cond_38

    check-cast v14, Lyads/yy3;

    iget-object v5, v14, Lyads/yy3;->e:Ljava/lang/String;

    invoke-static {v5}, Lyads/u56;->a(Ljava/lang/String;)I

    move-result v5

    new-instance v9, Lyads/u04;

    const/16 v13, 0xd

    invoke-direct {v9, v13, v5}, Lyads/u04;-><init>(II)V

    :goto_1a
    move-object v5, v9

    goto/16 :goto_16

    :cond_38
    const/16 v13, 0xd

    instance-of v5, v14, Lyads/uy3;

    const/16 v15, 0xe

    if-eqz v5, :cond_39

    check-cast v14, Lyads/uy3;

    iget-object v5, v14, Lyads/uy3;->b:Ljava/lang/String;

    invoke-static {v5}, Lyads/u56;->a(Ljava/lang/String;)I

    move-result v5

    new-instance v9, Lyads/u04;

    invoke-direct {v9, v15, v5}, Lyads/u04;-><init>(II)V

    goto :goto_1a

    :cond_39
    instance-of v5, v14, Ljava/lang/OutOfMemoryError;

    if-eqz v5, :cond_3a

    new-instance v5, Lyads/u04;

    invoke-direct {v5, v15, v7}, Lyads/u04;-><init>(II)V

    goto/16 :goto_16

    :cond_3a
    instance-of v5, v14, Lyads/qm;

    if-eqz v5, :cond_3b

    check-cast v14, Lyads/qm;

    iget v5, v14, Lyads/qm;->b:I

    new-instance v9, Lyads/u04;

    const/16 v10, 0x11

    invoke-direct {v9, v10, v5}, Lyads/u04;-><init>(II)V

    goto :goto_1a

    :cond_3b
    instance-of v5, v14, Lyads/sm;

    if-eqz v5, :cond_3c

    check-cast v14, Lyads/sm;

    iget v5, v14, Lyads/sm;->b:I

    new-instance v9, Lyads/u04;

    const/16 v10, 0x12

    invoke-direct {v9, v10, v5}, Lyads/u04;-><init>(II)V

    goto :goto_1a

    :cond_3c
    sget v5, Lyads/u56;->a:I

    const/16 v15, 0x10

    if-lt v5, v15, :cond_41

    instance-of v5, v14, Landroid/media/MediaCodec$CryptoException;

    if-eqz v5, :cond_41

    check-cast v14, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v14}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v5

    if-eq v5, v11, :cond_3f

    if-eq v5, v8, :cond_3f

    const/16 v14, 0xa

    if-eq v5, v14, :cond_3e

    const/4 v14, 0x7

    const/16 v15, 0x8

    if-eq v5, v14, :cond_40

    if-eq v5, v15, :cond_3d

    packed-switch v5, :pswitch_data_2

    packed-switch v5, :pswitch_data_3

    move v9, v10

    goto :goto_1b

    :cond_3d
    :pswitch_4
    move v9, v12

    goto :goto_1b

    :cond_3e
    const/4 v14, 0x7

    const/16 v15, 0x8

    :pswitch_5
    move/from16 v9, v20

    goto :goto_1b

    :cond_3f
    const/4 v14, 0x7

    const/16 v15, 0x8

    :cond_40
    :pswitch_6
    move/from16 v9, v19

    :goto_1b
    :pswitch_7
    new-instance v10, Lyads/u04;

    invoke-direct {v10, v9, v5}, Lyads/u04;-><init>(II)V

    move-object v5, v10

    goto :goto_1c

    :cond_41
    const/4 v14, 0x7

    const/16 v15, 0x8

    new-instance v5, Lyads/u04;

    const/16 v9, 0x16

    invoke-direct {v5, v9, v7}, Lyads/u04;-><init>(II)V

    :goto_1c
    iget-object v9, v0, Lyads/w04;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lr85;->a()Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v10

    iget-wide v13, v0, Lyads/w04;->d:J

    sub-long v12, v2, v13

    invoke-virtual {v10, v12, v13}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v10

    iget v12, v5, Lyads/u04;->a:I

    invoke-virtual {v10, v12}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v10

    iget v5, v5, Lyads/u04;->b:I

    invoke-virtual {v10, v5}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->build()Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/media/metrics/PlaybackSession;->reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V

    const/4 v13, 0x1

    iput-boolean v13, v0, Lyads/w04;->A:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lyads/w04;->n:Lyads/zv4;

    :goto_1d
    invoke-virtual {v6, v11}, Lyads/oe;->a(I)Z

    move-result v1

    if-eqz v1, :cond_42

    move-object/from16 v1, p1

    check-cast v1, Lyads/eq2;

    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v1, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v1, v1, Lyads/bw4;->i:Lyads/q06;

    iget-object v1, v1, Lyads/q06;->d:Lyads/m16;

    invoke-virtual {v1, v11}, Lyads/m16;->a(I)Z

    move-result v5

    invoke-virtual {v1, v13}, Lyads/m16;->a(I)Z

    move-result v9

    const/4 v13, 0x3

    invoke-virtual {v1, v13}, Lyads/m16;->a(I)Z

    move-result v10

    if-nez v5, :cond_43

    if-nez v9, :cond_43

    if-eqz v10, :cond_42

    goto :goto_1e

    :cond_42
    move v12, v4

    move/from16 v18, v15

    goto/16 :goto_25

    :cond_43
    :goto_1e
    if-nez v5, :cond_46

    iget-object v1, v0, Lyads/w04;->r:Lyads/vz2;

    move v5, v4

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    move v12, v5

    :goto_1f
    move/from16 v18, v15

    goto :goto_21

    :cond_44
    iget-object v1, v0, Lyads/w04;->r:Lyads/vz2;

    if-nez v1, :cond_45

    move v1, v5

    const/4 v5, 0x1

    goto :goto_20

    :cond_45
    move v1, v5

    move v5, v7

    :goto_20
    iput-object v4, v0, Lyads/w04;->r:Lyads/vz2;

    move v12, v1

    const/4 v1, 0x1

    move/from16 v18, v15

    invoke-virtual/range {v0 .. v5}, Lyads/w04;->a(IJLyads/vz2;I)V

    goto :goto_21

    :cond_46
    move v12, v4

    goto :goto_1f

    :goto_21
    if-nez v9, :cond_49

    iget-object v1, v0, Lyads/w04;->s:Lyads/vz2;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_23

    :cond_47
    iget-object v1, v0, Lyads/w04;->s:Lyads/vz2;

    if-nez v1, :cond_48

    const/4 v5, 0x1

    goto :goto_22

    :cond_48
    move v5, v7

    :goto_22
    iput-object v4, v0, Lyads/w04;->s:Lyads/vz2;

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lyads/w04;->a(IJLyads/vz2;I)V

    :cond_49
    :goto_23
    if-nez v10, :cond_4c

    iget-object v1, v0, Lyads/w04;->t:Lyads/vz2;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_25

    :cond_4a
    iget-object v1, v0, Lyads/w04;->t:Lyads/vz2;

    if-nez v1, :cond_4b

    const/4 v5, 0x1

    goto :goto_24

    :cond_4b
    move v5, v7

    :goto_24
    iput-object v4, v0, Lyads/w04;->t:Lyads/vz2;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v5}, Lyads/w04;->a(IJLyads/vz2;I)V

    :cond_4c
    :goto_25
    iget-object v1, v0, Lyads/w04;->o:Lyads/v04;

    invoke-virtual {v0, v1}, Lyads/w04;->a(Lyads/v04;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, v0, Lyads/w04;->o:Lyads/v04;

    iget-object v4, v1, Lyads/v04;->a:Lyads/vz2;

    iget v5, v4, Lyads/vz2;->s:I

    const/4 v9, -0x1

    if-eq v5, v9, :cond_4f

    iget v1, v1, Lyads/v04;->b:I

    iget-object v5, v0, Lyads/w04;->r:Lyads/vz2;

    invoke-static {v5, v4}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    :goto_26
    const/4 v1, 0x0

    goto :goto_28

    :cond_4d
    iget-object v5, v0, Lyads/w04;->r:Lyads/vz2;

    if-nez v5, :cond_4e

    if-nez v1, :cond_4e

    const/4 v5, 0x1

    goto :goto_27

    :cond_4e
    move v5, v1

    :goto_27
    iput-object v4, v0, Lyads/w04;->r:Lyads/vz2;

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Lyads/w04;->a(IJLyads/vz2;I)V

    goto :goto_26

    :goto_28
    iput-object v1, v0, Lyads/w04;->o:Lyads/v04;

    :cond_4f
    iget-object v1, v0, Lyads/w04;->p:Lyads/v04;

    invoke-virtual {v0, v1}, Lyads/w04;->a(Lyads/v04;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, v0, Lyads/w04;->p:Lyads/v04;

    iget-object v4, v1, Lyads/v04;->a:Lyads/vz2;

    iget v1, v1, Lyads/v04;->b:I

    iget-object v5, v0, Lyads/w04;->s:Lyads/vz2;

    invoke-static {v5, v4}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    :goto_29
    const/4 v1, 0x0

    goto :goto_2b

    :cond_50
    iget-object v5, v0, Lyads/w04;->s:Lyads/vz2;

    if-nez v5, :cond_51

    if-nez v1, :cond_51

    const/4 v5, 0x1

    goto :goto_2a

    :cond_51
    move v5, v1

    :goto_2a
    iput-object v4, v0, Lyads/w04;->s:Lyads/vz2;

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lyads/w04;->a(IJLyads/vz2;I)V

    goto :goto_29

    :goto_2b
    iput-object v1, v0, Lyads/w04;->p:Lyads/v04;

    :cond_52
    iget-object v1, v0, Lyads/w04;->q:Lyads/v04;

    invoke-virtual {v0, v1}, Lyads/w04;->a(Lyads/v04;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, v0, Lyads/w04;->q:Lyads/v04;

    iget-object v4, v1, Lyads/v04;->a:Lyads/vz2;

    iget v1, v1, Lyads/v04;->b:I

    iget-object v5, v0, Lyads/w04;->t:Lyads/vz2;

    invoke-static {v5, v4}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    :goto_2c
    const/4 v1, 0x0

    goto :goto_2e

    :cond_53
    iget-object v5, v0, Lyads/w04;->t:Lyads/vz2;

    if-nez v5, :cond_54

    if-nez v1, :cond_54

    const/4 v5, 0x1

    goto :goto_2d

    :cond_54
    move v5, v1

    :goto_2d
    iput-object v4, v0, Lyads/w04;->t:Lyads/vz2;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v5}, Lyads/w04;->a(IJLyads/vz2;I)V

    goto :goto_2c

    :goto_2e
    iput-object v1, v0, Lyads/w04;->q:Lyads/v04;

    :cond_55
    iget-object v1, v0, Lyads/w04;->a:Landroid/content/Context;

    invoke-static {v1}, Lyads/nn4;->a(Landroid/content/Context;)Lyads/nn4;

    move-result-object v1

    invoke-virtual {v1}, Lyads/nn4;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_4

    :pswitch_8
    const/4 v4, 0x1

    goto :goto_2f

    :pswitch_9
    const/4 v4, 0x7

    goto :goto_2f

    :pswitch_a
    move/from16 v4, v18

    goto :goto_2f

    :pswitch_b
    const/4 v4, 0x3

    goto :goto_2f

    :pswitch_c
    move/from16 v4, v16

    goto :goto_2f

    :pswitch_d
    move v4, v12

    goto :goto_2f

    :pswitch_e
    move v4, v8

    goto :goto_2f

    :pswitch_f
    move v4, v11

    goto :goto_2f

    :pswitch_10
    move/from16 v4, v17

    goto :goto_2f

    :pswitch_11
    move v4, v7

    :goto_2f
    iget v1, v0, Lyads/w04;->m:I

    if-eq v4, v1, :cond_56

    iput v4, v0, Lyads/w04;->m:I

    iget-object v1, v0, Lyads/w04;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lq85;->a()Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/media/metrics/NetworkEvent$Builder;->setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v4

    iget-wide v9, v0, Lyads/w04;->d:J

    sub-long v9, v2, v9

    invoke-virtual {v4, v9, v10}, Landroid/media/metrics/NetworkEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/metrics/NetworkEvent$Builder;->build()Landroid/media/metrics/NetworkEvent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/metrics/PlaybackSession;->reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V

    :cond_56
    move-object/from16 v1, p1

    check-cast v1, Lyads/eq2;

    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v4, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget v4, v4, Lyads/bw4;->e:I

    if-eq v4, v11, :cond_57

    iput-boolean v7, v0, Lyads/w04;->u:Z

    :cond_57
    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v4, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v4, v4, Lyads/bw4;->f:Lyads/up2;

    if-nez v4, :cond_58

    iput-boolean v7, v0, Lyads/w04;->w:Z

    const/16 v14, 0xa

    goto :goto_30

    :cond_58
    const/16 v14, 0xa

    invoke-virtual {v6, v14}, Lyads/oe;->a(I)Z

    move-result v4

    if-eqz v4, :cond_59

    const/4 v13, 0x1

    iput-boolean v13, v0, Lyads/w04;->w:Z

    :cond_59
    :goto_30
    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v4, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget v4, v4, Lyads/bw4;->e:I

    iget-boolean v5, v0, Lyads/w04;->u:Z

    if-eqz v5, :cond_5a

    move v8, v12

    goto/16 :goto_32

    :cond_5a
    iget-boolean v5, v0, Lyads/w04;->w:Z

    if-eqz v5, :cond_5b

    const/16 v8, 0xd

    goto :goto_32

    :cond_5b
    if-ne v4, v8, :cond_5c

    const/16 v8, 0xb

    goto :goto_32

    :cond_5c
    if-ne v4, v11, :cond_61

    iget v4, v0, Lyads/w04;->l:I

    if-eqz v4, :cond_60

    if-ne v4, v11, :cond_5d

    goto :goto_31

    :cond_5d
    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v4, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget-boolean v4, v4, Lyads/bw4;->l:Z

    if-nez v4, :cond_5e

    const/4 v8, 0x7

    goto :goto_32

    :cond_5e
    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v1, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget v1, v1, Lyads/bw4;->m:I

    if-eqz v1, :cond_5f

    move v8, v14

    goto :goto_32

    :cond_5f
    move/from16 v8, v16

    goto :goto_32

    :cond_60
    :goto_31
    move v8, v11

    goto :goto_32

    :cond_61
    const/4 v13, 0x3

    if-ne v4, v13, :cond_64

    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v4, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget-boolean v4, v4, Lyads/bw4;->l:Z

    if-nez v4, :cond_62

    goto :goto_32

    :cond_62
    invoke-virtual {v1}, Lyads/eq2;->q()V

    iget-object v1, v1, Lyads/eq2;->b0:Lyads/bw4;

    iget v1, v1, Lyads/bw4;->m:I

    if-eqz v1, :cond_63

    move/from16 v8, v17

    goto :goto_32

    :cond_63
    move v8, v13

    goto :goto_32

    :cond_64
    const/4 v13, 0x1

    if-ne v4, v13, :cond_65

    iget v1, v0, Lyads/w04;->l:I

    if-eqz v1, :cond_65

    const/16 v8, 0xc

    goto :goto_32

    :cond_65
    iget v8, v0, Lyads/w04;->l:I

    :goto_32
    iget v1, v0, Lyads/w04;->l:I

    if-eq v1, v8, :cond_66

    iput v8, v0, Lyads/w04;->l:I

    const/4 v13, 0x1

    iput-boolean v13, v0, Lyads/w04;->A:Z

    iget-object v1, v0, Lyads/w04;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Ldj;->a()Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v4

    iget v5, v0, Lyads/w04;->l:I

    invoke-virtual {v4, v5}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v4

    iget-wide v7, v0, Lyads/w04;->d:J

    sub-long/2addr v2, v7

    invoke-virtual {v4, v2, v3}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/metrics/PlaybackStateEvent$Builder;->build()Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/metrics/PlaybackSession;->reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V

    :cond_66
    const/16 v1, 0x404

    invoke-virtual {v6, v1}, Lyads/oe;->a(I)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v0, v0, Lyads/w04;->b:Lyads/wl0;

    iget-object v2, v6, Lyads/oe;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ne;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lyads/wl0;->a(Lyads/ne;)V

    :cond_67
    :goto_33
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x18
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final a(Lyads/kx5;Lyads/h14;)V
    .locals 6

    .line 1689
    iget-object v0, p0, Lyads/w04;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    goto :goto_0

    .line 1690
    :cond_0
    iget-object p2, p2, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    :goto_0
    return-void

    .line 1691
    :cond_1
    iget-object v1, p0, Lyads/w04;->f:Lyads/hx5;

    const/4 v2, 0x0

    .line 1692
    invoke-virtual {p1, p2, v1, v2}, Lyads/kx5;->a(ILyads/hx5;Z)Lyads/hx5;

    .line 1693
    iget-object p2, p0, Lyads/w04;->f:Lyads/hx5;

    iget p2, p2, Lyads/hx5;->d:I

    iget-object v1, p0, Lyads/w04;->e:Lyads/jx5;

    const-wide/16 v3, 0x0

    .line 1694
    invoke-virtual {p1, p2, v1, v3, v4}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    .line 1695
    iget-object p1, p0, Lyads/w04;->e:Lyads/jx5;

    iget-object p1, p1, Lyads/jx5;->d:Lyads/p04;

    .line 1696
    iget-object p1, p1, Lyads/p04;->c:Lyads/k04;

    const/4 p2, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_2

    goto :goto_1

    .line 1697
    :cond_2
    iget-object p1, p1, Lyads/k04;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 1698
    invoke-static {p1, v2}, Lyads/u56;->a(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, p2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    .line 1699
    :goto_1
    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 1700
    iget-object p1, p0, Lyads/w04;->e:Lyads/jx5;

    iget-wide v2, p1, Lyads/jx5;->o:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Lyads/jx5;->m:Z

    if-nez v2, :cond_6

    iget-boolean v2, p1, Lyads/jx5;->j:Z

    if-nez v2, :cond_6

    .line 1701
    invoke-virtual {p1}, Lyads/jx5;->a()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1702
    iget-object p1, p0, Lyads/w04;->e:Lyads/jx5;

    .line 1703
    iget-wide v2, p1, Lyads/jx5;->o:J

    .line 1704
    invoke-static {v2, v3}, Lyads/u56;->b(J)J

    move-result-wide v2

    .line 1705
    invoke-virtual {v0, v2, v3}, Landroid/media/metrics/PlaybackMetrics$Builder;->setMediaDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 1706
    :cond_6
    iget-object p1, p0, Lyads/w04;->e:Lyads/jx5;

    invoke-virtual {p1}, Lyads/jx5;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move p2, v1

    .line 1707
    :goto_2
    invoke-virtual {v0, p2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlaybackType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 1708
    iput-boolean v1, p0, Lyads/w04;->A:Z

    return-void
.end method

.method public final a(Lyads/ne;Ljava/lang/String;)V
    .locals 1

    .line 1646
    iget-object v0, p1, Lyads/ne;->d:Lyads/h14;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyads/b14;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1647
    :cond_0
    invoke-virtual {p0}, Lyads/w04;->a()V

    .line 1648
    iput-object p2, p0, Lyads/w04;->i:Ljava/lang/String;

    .line 1649
    invoke-static {}, Lgn;->b()Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    .line 1650
    const-string v0, "ExoPlayerLib"

    invoke-virtual {p2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerName(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    .line 1651
    const-string v0, "2.18.1"

    invoke-virtual {p2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerVersion(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, Lyads/w04;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 1652
    iget-object p2, p1, Lyads/ne;->b:Lyads/kx5;

    iget-object p1, p1, Lyads/ne;->d:Lyads/h14;

    invoke-virtual {p0, p2, p1}, Lyads/w04;->a(Lyads/kx5;Lyads/h14;)V

    return-void
.end method

.method public final a(Lyads/v04;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1653
    iget-object p1, p1, Lyads/v04;->c:Ljava/lang/String;

    iget-object p0, p0, Lyads/w04;->b:Lyads/wl0;

    .line 1654
    monitor-enter p0

    .line 1655
    :try_start_0
    iget-object v0, p0, Lyads/wl0;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1656
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Lyads/ne;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, Lyads/ne;->d:Lyads/h14;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lyads/b14;->a()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lyads/w04;->i:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lyads/w04;->a()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lyads/w04;->g:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lyads/w04;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
