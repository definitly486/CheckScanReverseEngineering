.class public final Lyads/ej4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/dj4;

.field public final b:Lyads/ja;

.field public final c:Lyads/ce4;


# direct methods
.method public constructor <init>(Lyads/bf5;)V
    .locals 3

    new-instance v0, Lyads/dj4;

    invoke-direct {v0}, Lyads/dj4;-><init>()V

    new-instance v1, Lyads/ja;

    invoke-direct {v1}, Lyads/ja;-><init>()V

    new-instance v2, Lyads/ce4;

    invoke-direct {v2, p1}, Lyads/ce4;-><init>(Lyads/bf5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/ej4;->a:Lyads/dj4;

    iput-object v1, p0, Lyads/ej4;->b:Lyads/ja;

    iput-object v2, p0, Lyads/ej4;->c:Lyads/ce4;

    return-void
.end method
