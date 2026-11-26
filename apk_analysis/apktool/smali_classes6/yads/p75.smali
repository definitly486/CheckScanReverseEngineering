.class public final Lyads/p75;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Lyads/r75;


# direct methods
.method public constructor <init>(Lyads/r75;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lyads/p75;->d:Lyads/r75;

    iput-object p2, p0, Lyads/p75;->b:Ljava/lang/String;

    iput-wide p3, p0, Lyads/p75;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lyads/p75;->d:Lyads/r75;

    iget-object v0, v0, Lyads/r75;->b:Lyads/ki6;

    iget-object v1, p0, Lyads/p75;->b:Ljava/lang/String;

    iget-wide v2, p0, Lyads/p75;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lyads/ki6;->a(Ljava/lang/String;J)V

    iget-object p0, p0, Lyads/p75;->d:Lyads/r75;

    iget-object v0, p0, Lyads/r75;->b:Lyads/ki6;

    invoke-virtual {p0}, Lyads/r75;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lyads/ki6;->a()V

    return-void
.end method
