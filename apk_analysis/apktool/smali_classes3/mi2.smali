.class public final synthetic Lmi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/text/TextOutput;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lyads/l66;
.implements Lyads/lv5;
.implements Lyads/st3;


# direct methods
.method public static synthetic b()V
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lyads/az1;->c(J)Z

    move-result p0

    return p0
.end method

.method public a(Ljava/util/List;)Z
    .locals 0

    .line 11
    invoke-static {p1}, Lyads/vg2;->a(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 0

    invoke-static {p1}, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;->b(Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->d(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
