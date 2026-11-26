.class public final Lcl2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl2;->g(Lh88;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh88;

.field public final synthetic c:Lcl2;


# direct methods
.method public constructor <init>(Lcl2;Lh88;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcl2$b;->c:Lcl2;

    iput-object p2, p0, Lcl2$b;->b:Lh88;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcl2$b;->c:Lcl2;

    iget-object v0, v0, Lcl2;->h:Lrl1;

    iget-object p0, p0, Lcl2$b;->b:Lh88;

    iget-object v1, p0, Lh88;->b:Ljava/lang/String;

    iget-object p0, p0, Lh88;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p0}, Lrl1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
