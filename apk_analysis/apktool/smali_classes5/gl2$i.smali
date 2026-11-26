.class public final Lgl2$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgl2;->j(Lh88;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh88;

.field public final synthetic c:Lgl2;


# direct methods
.method public constructor <init>(Lgl2;Lh88;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgl2$i;->c:Lgl2;

    iput-object p2, p0, Lgl2$i;->b:Lh88;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lgl2$i;->c:Lgl2;

    iget-object v0, v0, Lgl2;->e:Lcm1;

    iget-object p0, p0, Lgl2$i;->b:Lh88;

    invoke-interface {v0, p0}, Lcm1;->j(Lh88;)V

    return-void
.end method
