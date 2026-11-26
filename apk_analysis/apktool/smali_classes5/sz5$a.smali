.class public final Lsz5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li02;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsz5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li02<",
        "Lb57;",
        "Ljava/util/Optional<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Li02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li02<",
            "Lb57;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li02<",
            "Lb57;",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsz5$a;->a:Li02;

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb57;

    iget-object p0, p0, Lsz5$a;->a:Li02;

    invoke-interface {p0, p1}, Li02;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
