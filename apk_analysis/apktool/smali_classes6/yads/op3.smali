.class public final Lyads/op3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/q25;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/u03;)V
    .locals 1

    new-instance v0, Lyads/q25;

    invoke-direct {v0, p2}, Lyads/q25;-><init>(Lyads/u03;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/op3;->a:Lyads/q25;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/op3;->b:Landroid/content/Context;

    return-void
.end method
