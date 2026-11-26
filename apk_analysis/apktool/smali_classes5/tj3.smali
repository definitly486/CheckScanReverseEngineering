.class public final Ltj3;
.super Lcq5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Receiver:",
        "Ljava/lang/Object;",
        ">",
        "Lcq5<",
        "TReceiver;>;"
    }
.end annotation


# instance fields
.field public final c:Lhs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhs<",
            "TReceiver;",
            "Led2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld3;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcq5;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    iput-object p1, p0, Ltj3;->c:Lhs;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ldq5;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReceiver;",
            "Ljava/lang/CharSequence;",
            "II)",
            "Ldq5;"
        }
    .end annotation

    sub-int v0, p4, p3

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance p0, Ldq5$c;

    invoke-direct {p0, v1}, Ldq5$c;-><init>(I)V

    return-object p0

    :cond_0
    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    new-instance p0, Ldq5$d;

    invoke-direct {p0, v1}, Ldq5$d;-><init>(I)V

    return-object p0

    :cond_1
    new-instance v1, Led2;

    const/4 v2, 0x0

    :goto_0
    if-ge p3, p4, :cond_2

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {v1, v2, v0}, Led2;-><init>(II)V

    iget-object p0, p0, Ltj3;->c:Lhs;

    invoke-interface {p0, p1, v1}, Lhs;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p1, Ldq5$a;

    invoke-direct {p1, p0}, Ldq5$a;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
