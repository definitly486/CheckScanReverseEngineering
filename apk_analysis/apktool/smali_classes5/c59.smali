.class public final Lc59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly36;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Output:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ly36<",
        "TOutput;>;"
    }
.end annotation


# instance fields
.field public final a:Luz5$d;


# direct methods
.method public constructor <init>(Luz5$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc59;->a:Luz5$d;

    return-void
.end method


# virtual methods
.method public final a(Lm02;Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lc59;->a:Luz5$d;

    invoke-virtual {p0, p1}, Luz5$d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
