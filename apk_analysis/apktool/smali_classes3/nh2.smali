.class public final synthetic Lnh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llm3;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(JJLandroidx/media3/common/audio/DefaultGainProvider$FadeProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnh2;->b:J

    iput-object p5, p0, Lnh2;->c:Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;

    iput-wide p3, p0, Lnh2;->d:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-wide v3, p0, Lnh2;->d:J

    move-object v5, p1

    check-cast v5, Landroid/util/Pair;

    iget-wide v0, p0, Lnh2;->b:J

    iget-object v2, p0, Lnh2;->c:Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/audio/DefaultGainProvider$Builder;->a(JLandroidx/media3/common/audio/DefaultGainProvider$FadeProvider;JLandroid/util/Pair;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
