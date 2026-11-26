.class public final Lo68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le02;
.implements Lb32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le02<",
        "TT;>;",
        "Lb32;"
    }
.end annotation


# instance fields
.field public final b:Lf91$a;

.field public final c:Lo22;


# direct methods
.method public constructor <init>(Lf91$a;Lo22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo68;->b:Lf91$a;

    iput-object p2, p0, Lo68;->c:Lo22;

    return-void
.end method


# virtual methods
.method public final getCallerFrame()Lb32;
    .locals 0

    iget-object p0, p0, Lo68;->b:Lf91$a;

    return-object p0
.end method

.method public final getContext()Lo22;
    .locals 0

    iget-object p0, p0, Lo68;->c:Lo22;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lo68;->b:Lf91$a;

    invoke-interface {p0, p1}, Le02;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
