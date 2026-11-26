.class public final Lsa8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzo7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzo7<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa8;->a:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lgq4;

    iget-object p0, p0, Lsa8;->a:Ljava/lang/CharSequence;

    invoke-direct {v0, p0}, Lgq4;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
