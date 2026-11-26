.class public final Lt$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt$b;->i(Lh88;Ldm1$a;ZLla5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh88;

.field public final synthetic c:Ldm1$a;

.field public final synthetic d:Lla5;

.field public final synthetic e:Lt$b;


# direct methods
.method public constructor <init>(Lt$b;Lh88;Ldm1$a;Lla5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt$b$a;->e:Lt$b;

    iput-object p2, p0, Lt$b$a;->b:Lh88;

    iput-object p3, p0, Lt$b$a;->c:Ldm1$a;

    iput-object p4, p0, Lt$b$a;->d:Lla5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lt$b$a;->c:Ldm1$a;

    iget-object v1, p0, Lt$b$a;->d:Lla5;

    iget-object v2, p0, Lt$b$a;->e:Lt$b;

    iget-object p0, p0, Lt$b$a;->b:Lh88;

    invoke-virtual {v2, p0, v0, v1}, Lt$b;->g(Lh88;Ldm1$a;Lla5;)V

    return-void
.end method
