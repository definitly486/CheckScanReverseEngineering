.class public final Lyads/p00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ua5;


# instance fields
.field public final a:Lyads/t25;

.field public final b:Lyads/xg5;


# direct methods
.method public constructor <init>(Lyads/r00;Lyads/t25;)V
    .locals 2

    new-instance v0, Lyads/xg5;

    iget v1, p1, Lyads/r00;->b:I

    iget-object p1, p1, Lyads/r00;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lyads/xg5;-><init>(ILjava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/p00;->a:Lyads/t25;

    iput-object v0, p0, Lyads/p00;->b:Lyads/xg5;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lyads/p00;->a:Lyads/t25;

    iget-object p0, p0, Lyads/p00;->b:Lyads/xg5;

    iget-object v0, v0, Lyads/t25;->a:Lyads/s25;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lyads/s25;->a(Lyads/s95;)V

    :cond_0
    return-void
.end method
