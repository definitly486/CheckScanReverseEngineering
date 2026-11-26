.class public final Lqw0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loc5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Loc5<",
        "[B",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# virtual methods
.method public final d(Lif5;)Lnc5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lif5;",
            ")",
            "Lnc5<",
            "[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p0, Lqw0;

    new-instance p1, Lqw0$d$a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lqw0;-><init>(Lqw0$b;)V

    return-object p0
.end method
