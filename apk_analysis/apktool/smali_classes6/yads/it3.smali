.class public final Lyads/it3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/wk;

.field public final b:Lyads/u9;

.field public final c:Lyads/zl6;

.field public final d:Lyads/pt3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;Lyads/wk;)V
    .locals 1

    new-instance v0, Lyads/u9;

    invoke-direct {v0}, Lyads/u9;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/it3;->a:Lyads/wk;

    iput-object v0, p0, Lyads/it3;->b:Lyads/u9;

    new-instance p3, Lyads/zl6;

    invoke-direct {p3}, Lyads/zl6;-><init>()V

    iput-object p3, p0, Lyads/it3;->c:Lyads/zl6;

    new-instance p3, Lyads/pt3;

    invoke-direct {p3, p1, p2}, Lyads/pt3;-><init>(Landroid/content/Context;Lyads/q84;)V

    iput-object p3, p0, Lyads/it3;->d:Lyads/pt3;

    return-void
.end method
