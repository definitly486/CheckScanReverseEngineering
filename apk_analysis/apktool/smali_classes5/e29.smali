.class public final Le29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzo7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lzo7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzo7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Ljava/lang/Integer;",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzo7;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzo7<",
            "+TT;>;",
            "Lbm3<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le29;->a:Lzo7;

    iput-object p2, p0, Le29;->b:Lbm3;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Le29$a;

    invoke-direct {v0, p0}, Le29$a;-><init>(Le29;)V

    return-object v0
.end method
