.class public final La85;
.super Lgg3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La85$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgg3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Ll75;


# direct methods
.method public constructor <init>(Ll75;)V
    .locals 0

    invoke-direct {p0}, Lgg3;-><init>()V

    iput-object p1, p0, La85;->c:Ll75;

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, La85$a;

    invoke-direct {v0, p1}, Lrk2;-><init>(Lwb8;)V

    iget-object p0, p0, La85;->c:Ll75;

    invoke-virtual {p0, v0}, La75;->a(Lt75;)V

    return-void
.end method
