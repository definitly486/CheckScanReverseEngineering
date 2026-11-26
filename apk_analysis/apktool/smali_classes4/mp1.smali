.class public abstract Lmp1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmp1$b;
    }
.end annotation


# static fields
.field public static final a:Lmp1$a;

.field public static final b:Lmp1$b;

.field public static final c:Lmp1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmp1$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmp1;->a:Lmp1$a;

    new-instance v0, Lmp1$b;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lmp1$b;-><init>(I)V

    sput-object v0, Lmp1;->b:Lmp1$b;

    new-instance v0, Lmp1$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmp1$b;-><init>(I)V

    sput-object v0, Lmp1;->c:Lmp1$b;

    return-void
.end method


# virtual methods
.method public abstract a(II)Lmp1;
.end method

.method public abstract b(JJ)Lmp1;
.end method

.method public abstract c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lmp1;
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
.end method

.method public abstract d(ZZ)Lmp1;
.end method

.method public abstract e(ZZ)Lmp1;
.end method

.method public abstract f()I
.end method
