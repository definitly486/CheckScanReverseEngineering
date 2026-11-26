.class public abstract Ldz3;
.super Luq7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldz3$b;,
        Ldz3$c;,
        Ldz3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Luq7<",
        "TReturnT;>;"
    }
.end annotation


# instance fields
.field public final a:Lm37;

.field public final b:Lokhttp3/a$a;

.field public final c:Li02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li02<",
            "Lb57;",
            "TResponseT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm37;Lokhttp3/a$a;Li02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm37;",
            "Lokhttp3/a$a;",
            "Li02<",
            "Lb57;",
            "TResponseT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Luq7;-><init>()V

    iput-object p1, p0, Ldz3;->a:Lm37;

    iput-object p2, p0, Ldz3;->b:Lokhttp3/a$a;

    iput-object p3, p0, Ldz3;->c:Li02;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    new-instance v0, Lgv5;

    iget-object v4, p0, Ldz3;->b:Lokhttp3/a$a;

    iget-object v5, p0, Ldz3;->c:Li02;

    iget-object v1, p0, Ldz3;->a:Lm37;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lgv5;-><init>(Lm37;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/a$a;Li02;)V

    invoke-virtual {p0, v0, v3}, Ldz3;->c(Lgv5;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract c(Lgv5;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
