.class public final Lyads/fm0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:[Lze4;


# instance fields
.field public final a:Lyads/wl5;

.field public final b:J

.field public final c:Lyads/tt4;

.field public final d:Lyads/e55;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/fm0;

    const-string v1, "weakSkipButton"

    const-string v2, "getWeakSkipButton()Landroid/view/View;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/fm0;->e:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lyads/wl5;J)V
    .locals 3

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Luy4;->a:Lhu3;

    invoke-virtual {v2}, Lhu3;->k0()Lgu3;

    move-result-object v2

    invoke-static {v1, v2}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v1

    invoke-interface {v1, v0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    invoke-static {v0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lyads/qt4;->a(Ly22;I)Lyads/tt4;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/fm0;->a:Lyads/wl5;

    iput-wide p3, p0, Lyads/fm0;->b:J

    iput-object v0, p0, Lyads/fm0;->c:Lyads/tt4;

    new-instance p3, Lyads/e55;

    invoke-direct {p3, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lyads/fm0;->d:Lyads/e55;

    invoke-interface {p2, p1}, Lyads/wl5;->a(Landroid/view/View;)V

    return-void
.end method
