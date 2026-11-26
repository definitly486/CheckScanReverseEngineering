.class public final Lpc5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpc5$a;
    }
.end annotation


# instance fields
.field public final a:Lif5;

.field public final b:Lpc5$a;


# direct methods
.method public constructor <init>(Lf53$c;)V
    .locals 1

    new-instance v0, Lif5;

    invoke-direct {v0, p1}, Lif5;-><init>(Lf53$c;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lpc5$a;

    invoke-direct {p1}, Lpc5$a;-><init>()V

    iput-object p1, p0, Lpc5;->b:Lpc5$a;

    iput-object v0, p0, Lpc5;->a:Lif5;

    return-void
.end method
