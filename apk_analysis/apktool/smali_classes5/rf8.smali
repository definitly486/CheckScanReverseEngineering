.class public final Lrf8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqf8;


# instance fields
.field public final a:Lo87;


# direct methods
.method public constructor <init>(Lo87;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrf8;->a:Lo87;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lrf8;->a:Lo87;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lsf8;

    invoke-direct {v0, p1}, Lsf8;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ldf7;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object p0, p0, Lrf8;->a:Lo87;

    invoke-virtual {p0, p1}, Lo87;->e([Ldf7;)V

    return-void
.end method
