.class public final La96;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lvi;

.field public static final b:Lw07;

.field public static final c:Ldv0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "RoboVM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "Dalvik"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object v2, La96;->a:Lvi;

    new-instance v0, Lw07$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La96;->b:Lw07;

    new-instance v0, Ldv0$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La96;->c:Ldv0;

    return-void

    :cond_0
    new-instance v0, Lvi;

    invoke-direct {v0}, Lvi;-><init>()V

    sput-object v0, La96;->a:Lvi;

    new-instance v0, Lw07$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La96;->b:Lw07;

    new-instance v0, Ldv0$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La96;->c:Ldv0;

    return-void

    :cond_1
    sput-object v2, La96;->a:Lvi;

    new-instance v0, Lw07;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La96;->b:Lw07;

    new-instance v0, Ldv0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La96;->c:Ldv0;

    return-void
.end method
