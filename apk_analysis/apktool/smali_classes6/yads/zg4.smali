.class public final Lyads/zg4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ni6;

.field public final b:Lyads/qj4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 2

    new-instance v0, Lyads/ni6;

    invoke-direct {v0}, Lyads/ni6;-><init>()V

    new-instance v1, Lyads/qj4;

    invoke-direct {v1, p1, p2}, Lyads/qj4;-><init>(Landroid/content/Context;Lyads/q84;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/zg4;->a:Lyads/ni6;

    iput-object v1, p0, Lyads/zg4;->b:Lyads/qj4;

    return-void
.end method
