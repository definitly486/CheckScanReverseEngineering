.class public final Lf92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf92$a;,
        Lf92$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnc5<",
        "TModel;TData;>;"
    }
.end annotation


# instance fields
.field public final a:Lf92$b$a;


# direct methods
.method public constructor <init>(Lf92$b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf92;->a:Lf92$b$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Lnc5$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lxz5;",
            ")",
            "Lnc5$a<",
            "TData;>;"
        }
    .end annotation

    new-instance p2, Lnc5$a;

    new-instance p3, Loq5;

    invoke-direct {p3, p1}, Loq5;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lf92$a;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lf92;->a:Lf92$b$a;

    invoke-direct {p4, p1, p0}, Lf92$a;-><init>(Ljava/lang/String;Lf92$b$a;)V

    invoke-direct {p2, p3, p4}, Lnc5$a;-><init>(Lkf4;Ls82;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "data:image"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
