.class public final Lyads/tf5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/q84;

.field public final b:Z

.field public final c:Lyads/eu5;

.field public final d:Lyads/s54;

.field public final e:Lyads/sf5;


# direct methods
.method public constructor <init>(Lyads/q84;ZLyads/t5;)V
    .locals 3

    new-instance v0, Lyads/eu5;

    invoke-direct {v0}, Lyads/eu5;-><init>()V

    new-instance v1, Lyads/s54;

    invoke-direct {v1}, Lyads/s54;-><init>()V

    new-instance v2, Lyads/sf5;

    invoke-direct {v2, p3}, Lyads/sf5;-><init>(Lyads/t5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/tf5;->a:Lyads/q84;

    iput-boolean p2, p0, Lyads/tf5;->b:Z

    iput-object v0, p0, Lyads/tf5;->c:Lyads/eu5;

    iput-object v1, p0, Lyads/tf5;->d:Lyads/s54;

    iput-object v2, p0, Lyads/tf5;->e:Lyads/sf5;

    return-void
.end method
