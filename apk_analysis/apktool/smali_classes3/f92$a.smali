.class public final Lf92$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls82;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf92;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls82<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lf92$b$a;

.field public d:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lf92$b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf92$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lf92$a;->c:Lf92$b$a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    const-class p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public final b()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lf92$a;->d:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final c()Ly82;
    .locals 0

    sget-object p0, Ly82;->LOCAL:Ly82;

    return-object p0
.end method

.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final f(Ljg6;Ls82$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg6;",
            "Ls82$a<",
            "-TData;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lf92$a;->c:Lf92$b$a;

    iget-object v0, p0, Lf92$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lf92$b$a;->a(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;

    move-result-object p1

    iput-object p1, p0, Lf92$a;->d:Ljava/io/ByteArrayInputStream;

    invoke-interface {p2, p1}, Ls82$a;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-interface {p2, p0}, Ls82$a;->e(Ljava/lang/Exception;)V

    return-void
.end method
