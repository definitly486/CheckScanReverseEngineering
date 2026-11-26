.class public final Lyads/t90;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/String; = "yandex_tracking_events"

.field public static final g:Ljava/lang/String; = "yandex_linear_creative_info"

.field public static final h:Ljava/lang/String; = "yandex_designs"


# instance fields
.field public final a:Lyads/zl6;

.field public final b:Lyads/it3;

.field public final c:Lyads/a86;

.field public final d:Lyads/r90;

.field public final e:Lyads/xl6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 4

    new-instance v0, Lyads/zl6;

    invoke-direct {v0}, Lyads/zl6;-><init>()V

    new-instance v1, Lyads/wk;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v1, p1, p2, v2, v3}, Lyads/wk;-><init>(Landroid/content/Context;Lyads/q84;Lyads/pt3;I)V

    new-instance v2, Lyads/it3;

    invoke-direct {v2, p1, p2, v1}, Lyads/it3;-><init>(Landroid/content/Context;Lyads/q84;Lyads/wk;)V

    new-instance p1, Lyads/a86;

    invoke-direct {p1, p2}, Lyads/a86;-><init>(Lyads/q84;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/t90;->a:Lyads/zl6;

    iput-object v2, p0, Lyads/t90;->b:Lyads/it3;

    iput-object p1, p0, Lyads/t90;->c:Lyads/a86;

    new-instance p1, Lyads/st2;

    invoke-direct {p1}, Lyads/st2;-><init>()V

    new-instance p2, Lyads/r90;

    invoke-direct {p2, p1}, Lyads/r90;-><init>(Lyads/st2;)V

    iput-object p2, p0, Lyads/t90;->d:Lyads/r90;

    new-instance p1, Lyads/w06;

    invoke-direct {p1}, Lyads/w06;-><init>()V

    new-instance p2, Lyads/xl6;

    const-string v0, "CreativeExtension"

    const-string v1, "Tracking"

    invoke-direct {p2, p1, v0, v1}, Lyads/xl6;-><init>(Lyads/yl6;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lyads/t90;->e:Lyads/xl6;

    return-void
.end method
