.class public final Lyads/va6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zl6;

.field public final b:Lyads/ef3;

.field public final c:Lyads/ul6;

.field public final d:Lyads/si5;

.field public final e:Lyads/ft5;

.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 4

    new-instance v0, Lyads/zl6;

    invoke-direct {v0}, Lyads/zl6;-><init>()V

    new-instance v1, Lyads/ef3;

    new-instance v2, Lyads/x96;

    invoke-direct {v2, p1, p2}, Lyads/x96;-><init>(Landroid/content/Context;Lyads/q84;)V

    invoke-direct {v1, v2}, Lyads/ef3;-><init>(Lyads/x96;)V

    new-instance v2, Lyads/ul6;

    invoke-direct {v2, p1, p2}, Lyads/ul6;-><init>(Landroid/content/Context;Lyads/q84;)V

    new-instance p2, Lyads/si5;

    invoke-direct {p2}, Lyads/si5;-><init>()V

    new-instance v3, Lyads/ft5;

    invoke-direct {v3}, Lyads/ft5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/va6;->a:Lyads/zl6;

    iput-object v1, p0, Lyads/va6;->b:Lyads/ef3;

    iput-object v2, p0, Lyads/va6;->c:Lyads/ul6;

    iput-object p2, p0, Lyads/va6;->d:Lyads/si5;

    iput-object v3, p0, Lyads/va6;->e:Lyads/ft5;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/va6;->f:Landroid/content/Context;

    return-void
.end method
