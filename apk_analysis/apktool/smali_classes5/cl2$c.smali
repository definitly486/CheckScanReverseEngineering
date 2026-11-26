.class public final Lcl2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl2;->d(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcl2;


# direct methods
.method public constructor <init>(Lcl2;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcl2$c;->c:Lcl2;

    iput-object p2, p0, Lcl2$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcl2$c;->c:Lcl2;

    iget-object v0, v0, Lcl2;->h:Lrl1;

    iget-object p0, p0, Lcl2$c;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lrl1;->d(Ljava/lang/Object;)V

    return-void
.end method
