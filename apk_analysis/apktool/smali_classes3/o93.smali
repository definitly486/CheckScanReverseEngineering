.class public final Lo93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo93$d;,
        Lo93$c;,
        Lo93$b;,
        Lo93$e;,
        Lo93$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnc5<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final a:Lo93$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo93$d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo93$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo93$d<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo93;->a:Lo93$d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Lnc5$a;
    .locals 0

    check-cast p1, Ljava/io/File;

    new-instance p2, Lnc5$a;

    new-instance p3, Loq5;

    invoke-direct {p3, p1}, Loq5;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lo93$c;

    iget-object p0, p0, Lo93;->a:Lo93$d;

    invoke-direct {p4, p1, p0}, Lo93$c;-><init>(Ljava/io/File;Lo93$d;)V

    invoke-direct {p2, p3, p4}, Lnc5$a;-><init>(Lkf4;Ls82;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    const/4 p0, 0x1

    return p0
.end method
