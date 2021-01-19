module RoutinesHelper
  def group_check(routine)
    return if routine.group.nil?

    image_tag(routine.group.icon, class: 'group__image',
                                  onerror: 'this.error=null;this.src="https://picsum.photos/50/50?random=1"')
  end
end
