.class public final Lgl2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgl2;->c(Lqu1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lqu1;

.field public final synthetic c:Lgl2;


# direct methods
.method public constructor <init>(Lgl2;Lqu1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgl2$b;->c:Lgl2;

    iput-object p2, p0, Lgl2$b;->b:Lqu1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lgl2$b;->c:Lgl2;

    iget-object v0, v0, Lgl2;->e:Lcm1;

    iget-object p0, p0, Lgl2$b;->b:Lqu1;

    invoke-interface {v0, p0}, Le98;->c(Lqu1;)V

    return-void
.end method
