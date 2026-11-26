.class public final Lkz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly68<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lk5;->e()Lgy6;

    move-result-object p1

    iput-object p1, p0, Lkz;->a:Ly68;

    return-void
.end method
