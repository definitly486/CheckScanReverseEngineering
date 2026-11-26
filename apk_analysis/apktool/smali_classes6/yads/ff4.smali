.class public final Lyads/ff4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/we4;

.field public final c:Lyads/de4;

.field public final d:Lyads/ge4;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;Lyads/we4;)V
    .locals 2

    new-instance v0, Lyads/de4;

    invoke-direct {v0, p2}, Lyads/de4;-><init>(Lyads/bf5;)V

    new-instance v1, Lyads/ge4;

    invoke-direct {v1, p2}, Lyads/ge4;-><init>(Lyads/bf5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ff4;->a:Lyads/e4;

    iput-object p3, p0, Lyads/ff4;->b:Lyads/we4;

    iput-object v0, p0, Lyads/ff4;->c:Lyads/de4;

    iput-object v1, p0, Lyads/ff4;->d:Lyads/ge4;

    return-void
.end method
