.class public final Lyads/u76;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zl6;

.field public final b:Lyads/va6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 2

    new-instance v0, Lyads/zl6;

    invoke-direct {v0}, Lyads/zl6;-><init>()V

    new-instance v1, Lyads/va6;

    invoke-direct {v1, p1, p2}, Lyads/va6;-><init>(Landroid/content/Context;Lyads/q84;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/u76;->a:Lyads/zl6;

    iput-object v1, p0, Lyads/u76;->b:Lyads/va6;

    return-void
.end method
