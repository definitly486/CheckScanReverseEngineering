.class public final Ldz3$a;
.super Ldz3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldz3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Ldz3<",
        "TResponseT;TReturnT;>;"
    }
.end annotation


# instance fields
.field public final d:Lgy0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgy0<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm37;Lokhttp3/a$a;Li02;Lgy0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm37;",
            "Lokhttp3/a$a;",
            "Li02<",
            "Lb57;",
            "TResponseT;>;",
            "Lgy0<",
            "TResponseT;TReturnT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ldz3;-><init>(Lm37;Lokhttp3/a$a;Li02;)V

    iput-object p4, p0, Ldz3$a;->d:Lgy0;

    return-void
.end method


# virtual methods
.method public final c(Lgv5;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ldz3$a;->d:Lgy0;

    invoke-interface {p0, p1}, Lgy0;->b(Lgv5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
