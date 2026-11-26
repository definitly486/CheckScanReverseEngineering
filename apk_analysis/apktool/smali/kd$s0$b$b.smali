.class public final Lkd$s0$b$b;
.super Lkd$s0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$s0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final e:Lkd$s0$b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$s0$b$b;

    const-string v1, "Success"

    invoke-direct {v0, v1}, Lkd$s0$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkd$s0$b$b;->e:Lkd$s0$b$b;

    return-void
.end method
