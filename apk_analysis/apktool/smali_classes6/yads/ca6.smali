.class public final Lyads/ca6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "yandex_tracking_events"

.field public static final e:Ljava/util/List;


# instance fields
.field public final a:Lyads/zl6;

.field public final b:Lyads/tk5;

.field public final c:Lyads/xl6;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "VitrinaTVIsInteractive"

    const-string v6, "AdTitle"

    const-string v0, "ad_system"

    const-string v1, "social_ad_info"

    const-string v2, "AdTune"

    const-string v3, "yandex_ad_info"

    const-string v4, "bannerId"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/ca6;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Lyads/zl6;

    invoke-direct {v0}, Lyads/zl6;-><init>()V

    new-instance v1, Lyads/tk5;

    invoke-direct {v1, v0}, Lyads/tk5;-><init>(Lyads/zl6;)V

    new-instance v2, Lyads/w06;

    invoke-direct {v2}, Lyads/w06;-><init>()V

    new-instance v3, Lyads/xl6;

    const-string v4, "Extension"

    const-string v5, "Tracking"

    invoke-direct {v3, v2, v4, v5}, Lyads/xl6;-><init>(Lyads/yl6;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/ca6;->a:Lyads/zl6;

    iput-object v1, p0, Lyads/ca6;->b:Lyads/tk5;

    iput-object v3, p0, Lyads/ca6;->c:Lyads/xl6;

    return-void
.end method
