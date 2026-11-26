.class public final Lyads/ul6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zl6;

.field public final b:Lyads/x96;

.field public final c:Lyads/sl6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 2

    new-instance v0, Lyads/zl6;

    invoke-direct {v0}, Lyads/zl6;-><init>()V

    new-instance v1, Lyads/x96;

    invoke-direct {v1, p1, p2}, Lyads/x96;-><init>(Landroid/content/Context;Lyads/q84;)V

    new-instance p1, Lyads/sl6;

    invoke-direct {p1}, Lyads/sl6;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/ul6;->a:Lyads/zl6;

    iput-object v1, p0, Lyads/ul6;->b:Lyads/x96;

    iput-object p1, p0, Lyads/ul6;->c:Lyads/sl6;

    return-void
.end method
