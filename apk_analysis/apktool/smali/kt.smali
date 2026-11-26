.class public final Lkt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Z)Lht;
    .locals 1

    sget-object v0, Ljy8$a;->a:Ljy8$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lht;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput p0, v0, Lht;->a:I

    return-object v0
.end method

.method public static final b(I)Llt;
    .locals 1

    sget-object v0, Ljy8$a;->a:Ljy8$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llt;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput p0, v0, Llt;->a:I

    return-object v0
.end method

.method public static final c()Lmt;
    .locals 3

    sget-object v0, Ljy8$a;->a:Ljy8$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lmt;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lmt;->a:J

    return-object v0
.end method

.method public static final d(Ljava/lang/Object;)Lot;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lot<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Ljy8$a;->a:Ljy8$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lot;

    invoke-direct {v1, p0, v0}, Lot;-><init>(Ljava/lang/Object;Ljy8;)V

    return-object v1
.end method
