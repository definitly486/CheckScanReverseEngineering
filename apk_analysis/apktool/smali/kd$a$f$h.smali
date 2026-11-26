.class public final Lkd$a$f$h;
.super Lkd$a$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static final e:Lkd$a$f$h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$a$f$h;

    const-string v1, "StartInteraction"

    invoke-direct {v0, v1}, Lkd$a$f;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkd$a$f$h;->e:Lkd$a$f$h;

    return-void
.end method
