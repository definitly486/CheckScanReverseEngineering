.class public final Lzy3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loc5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Loc5<",
        "Lcr3;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Llc5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llc5<",
            "Lcr3;",
            "Lcr3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llc5;

    invoke-direct {v0}, Llc5;-><init>()V

    iput-object v0, p0, Lzy3$a;->a:Llc5;

    return-void
.end method


# virtual methods
.method public final d(Lif5;)Lnc5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lif5;",
            ")",
            "Lnc5<",
            "Lcr3;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lzy3;

    iget-object p0, p0, Lzy3$a;->a:Llc5;

    invoke-direct {p1, p0}, Lzy3;-><init>(Llc5;)V

    return-object p1
.end method
