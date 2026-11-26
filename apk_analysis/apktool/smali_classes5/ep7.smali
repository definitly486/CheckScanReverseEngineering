.class public final Lep7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzo7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzo7<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ldk8$a;


# direct methods
.method public constructor <init>(Ldk8$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lep7;->a:Ldk8$a;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lfp7;

    iget-object p0, p0, Lep7;->a:Ldk8$a;

    invoke-direct {v0, p0}, Lfp7;-><init>(Ldk8$a;)V

    return-object v0
.end method
