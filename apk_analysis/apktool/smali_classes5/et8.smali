.class public final Let8;
.super Lm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Let8$a;
    }
.end annotation


# instance fields
.field public final a:Ldt8;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldt8;

    invoke-direct {v0}, Ldt8;-><init>()V

    iput-object v0, p0, Let8;->a:Ldt8;

    return-void
.end method


# virtual methods
.method public final d()Lpj0;
    .locals 0

    iget-object p0, p0, Let8;->a:Ldt8;

    return-object p0
.end method

.method public final f(Ldq2;)Lrj0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
