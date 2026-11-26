.class public final Lnc5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnc5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lkf4;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkf4;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls82;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls82<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lkf4;Ls82;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkf4;",
            "Ls82<",
            "TData;>;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkf4;

    iput-object p1, p0, Lnc5$a;->a:Lkf4;

    invoke-static {v0, v1}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lnc5$a;->b:Ljava/util/List;

    invoke-static {p2, v1}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lnc5$a;->c:Ls82;

    return-void
.end method
