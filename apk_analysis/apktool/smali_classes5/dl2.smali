.class public final Ldl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcl2;


# direct methods
.method public constructor <init>(Lcl2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldl2;->b:Lcl2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ldl2;->b:Lcl2;

    iget-object p0, p0, Lcl2;->h:Lrl1;

    invoke-virtual {p0}, Lrl1;->c()V

    return-void
.end method
