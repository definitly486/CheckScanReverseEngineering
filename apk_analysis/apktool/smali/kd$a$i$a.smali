.class public final Lkd$a$i$a;
.super Lkd$a$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$a$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lkd$a$i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkd$a$i$a;

    const-string v1, "NAVBAR_PROFILE_CLICKED"

    const-string v2, "Profile"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Account"

    invoke-direct {v0, v2, v1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lkd$a$i$a;->e:Lkd$a$i$a;

    return-void
.end method
