.class public final Ld95;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld95$b;,
        Ld95$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc5<",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld95;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Lnc5$a;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    new-instance p2, Lnc5$a;

    new-instance p3, Loq5;

    invoke-direct {p3, p1}, Loq5;-><init>(Ljava/lang/Object;)V

    new-instance p4, Ld95$b;

    iget-object p0, p0, Ld95;->a:Landroid/content/Context;

    invoke-direct {p4, p0, p1}, Ld95$b;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p2, p3, p4}, Lnc5$a;-><init>(Lkf4;Ls82;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Lf95;->b(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method
