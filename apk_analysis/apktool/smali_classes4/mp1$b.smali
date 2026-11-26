.class public final Lmp1$b;
.super Lmp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmp1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmp1$b;->d:I

    return-void
.end method


# virtual methods
.method public final a(II)Lmp1;
    .locals 0

    return-object p0
.end method

.method public final b(JJ)Lmp1;
    .locals 0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lmp1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lmp1;"
        }
    .end annotation

    return-object p0
.end method

.method public final d(ZZ)Lmp1;
    .locals 0

    return-object p0
.end method

.method public final e(ZZ)Lmp1;
    .locals 0

    return-object p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lmp1$b;->d:I

    return p0
.end method
