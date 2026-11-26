.class public final Lkd$f0$a$a;
.super Lkd$f0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$f0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lkd$f0$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkd$f0$a$a;

    const-string v1, "ChangeNumber"

    const-string v2, "Success"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "PhoneConfirm"

    invoke-direct {v0, v2, v1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lkd$f0$a$a;->e:Lkd$f0$a$a;

    return-void
.end method
