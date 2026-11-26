.class public final Lpy4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljf6;

.field public final b:Lct6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lct6<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy4;->a:Ljf6;

    new-instance p1, Lct6;

    invoke-direct {p1}, Lct6;-><init>()V

    iput-object p1, p0, Lpy4;->b:Lct6;

    return-void
.end method
