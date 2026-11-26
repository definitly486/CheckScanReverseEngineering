.class public final Lm44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzo7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lzo7<",
        "Lj44<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lpn1;


# direct methods
.method public constructor <init>(Lpn1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm44;->a:Lpn1;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lj44<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lm44$a;

    invoke-direct {v0, p0}, Lm44$a;-><init>(Lm44;)V

    return-object v0
.end method
